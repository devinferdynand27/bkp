<!DOCTYPE html>
<html>

<head>
    <title>Filter Events</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style>
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        /* Pagination Container */
        .pagination {
            text-align: center;
            margin-top: 20px;
        }

        /* Pagination Buttons */
        .pagination button {
            background-color: #4CAF50;
            /* Green */
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 0 5px;
            border-radius: 5px;
            cursor: pointer;
        }

        .pagination button:hover {
            background-color: #45a049;
            /* Darker green */
        }

        .pagination button:disabled {
            background-color: #ddd;
            /* Light gray */
            color: #888;
            /* Gray text */
            cursor: not-allowed;
        }

        /* Pagination Buttons - Active */
        .pagination button.active {
            background-color: #333;
            /* Dark background for active page */
            color: white;
        }

        .calendar {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 10px;
            width: 350px;
            /* Adjust width */
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        #calendarTable {
            width: 100%;
            border-collapse: collapse;
            margin-top: 5px;
            /* Reduce margin */
        }

        #calendarTable th,
        #calendarTable td {
            border: 1px solid #ddd;
            text-align: center;
            padding: 5px;
            /* Reduce padding */
            font-size: 12px;
            /* Smaller font size */
        }

        #calendarTable th {
            background-color: #f2f2f2;
        }

        #calendarTable td {
            height: 40px;
            /* Reduce cell height */
        }

        button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 5px;
            /* Reduce button padding */
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            /* Smaller font size */
            border-radius: 4px;
            /* Adjust border radius */
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .modal {
            display: none;
            /* Hidden by default */
            position: fixed;
            /* Fixed position */
            z-index: 9999;
            /* Ensure it is above other elements */
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0, 0, 0, 0.4);
            /* Semitransparent background */
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            /* Wide enough but not too wide */
            max-width: 600px;
            /* Optional: Limit the maximum width */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            /* Optional: Add shadow */
            border-radius: 8px;
            /* Optional: Add rounded corners */
            position: relative;
            /* Ensure that the content is centered */
            top: 50%;
            transform: translateY(-50%);
            /* Center the modal vertically */
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        /* Add CSS to style the copy button */
        .copy-button {
            background-color: #4CAF50;
            /* Green */
            border: none;
            color: white;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 12px;
            margin-left: 10px;
            border-radius: 4px;
            cursor: pointer;
        }

        .copy-button:hover {
            background-color: #45a049;
            /* Darker green */
        }
    </style>
</head>

<body>

    @php
        use App\Models\KategoriKegiatan;
        use App\Models\KalenderKegiatan;
        $kategori = KategoriKegiatan::orderBy('created_at', 'asc')->get();
        $kalenderKegiatan = KalenderKegiatan::all();
        $waktuKegiatan = $kalenderKegiatan->pluck('waktu_kegiatan')->map(function ($datetime) {
            return \Carbon\Carbon::parse($datetime)->format('Y-m-d');
        });
    @endphp

    <div>
        <div class="calendar">
            <select id="categoryFilter" class="form-control">
                <option value="">Pilih Kategori</option>
                @foreach ($kategori as $item)
                    <option value="{{ $item->id }}">{{ $item->name }}</option>
                @endforeach
            </select>

            <div class="header">
                <button id="prev" onclick="changeMonth(-1)">Sebelumnya</button>
                <b id="monthYear"></b>
                <button id="next" onclick="changeMonth(1)">Berikutnya</button>
            </div>
            <table id="calendarTable">
                <thead>
                    <tr>
                        <th>Sen</th>
                        <th>Sel</th>
                        <th>Rab</th>
                        <th>Kam</th>
                        <th>Jum</th>
                        <th>Sab</th>
                        <th>Ming</th>
                    </tr>
                </thead>
                <tbody id="calendarBody">
                    <!-- Days will be inserted here by JavaScript -->
                </tbody>
            </table>
        </div>
    </div><br><br>
    <div id="modal" class="modal">
        <div class="modal-content">
            {{-- <span class="close" onclick="closeModal()">&times;</span> --}}
            <h4 id="modalDate"></h4><br><br>
            <div id="modalContent"></div>
            <div id="paginationControls" class="pagination"></div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            let currentDate = new Date();
            const monthYear = document.getElementById('monthYear');
            const calendarBody = document.getElementById('calendarBody');
            const categoryFilter = document.getElementById('categoryFilter');
            const modal = document.getElementById('modal');
            const modalDate = document.getElementById('modalDate');
            const modalContent = document.getElementById('modalContent');
            const paginationControls = document.getElementById('paginationControls');

            let selectedCategory = '';

            function generateCalendar(date, holidays) {
                calendarBody.innerHTML = '';
                monthYear.innerHTML = date.toLocaleDateString('id-ID', {
                    month: 'long',
                    year: 'numeric'
                });

                const firstDay = new Date(date.getFullYear(), date.getMonth(), 1).getDay();
                const daysInMonth = new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate();

                let day = 1;
                for (let i = 0; i < 6; i++) {
                    const row = document.createElement('tr');
                    for (let j = 0; j < 7; j++) {
                        const cell = document.createElement('td');
                        if ((i === 0 && j < (firstDay === 0 ? 6 : firstDay - 1)) || day > daysInMonth) {
                            cell.innerHTML = '';
                        } else {
                            const currentDateStr =
                                `${date.getFullYear()}-${String(date.getMonth() + 1).padStart(2, '0')}-${String(day).padStart(2, '0')}`;
                            if (holidays.includes(currentDateStr)) {
                                const button = document.createElement('button');
                                button.innerHTML = day;
                                button.onclick = () => showModal(currentDateStr);
                                cell.appendChild(button);
                            } else {
                                cell.innerHTML = day;
                            }
                            day++;
                        }
                        row.appendChild(cell);
                    }
                    calendarBody.appendChild(row);
                }
            }

            function changeMonth(step) {
                currentDate.setMonth(currentDate.getMonth() + step);
                fetchEventsAndUpdateCalendar();
            }

            function fetchEventsAndUpdateCalendar() {
                const selectedCategory = categoryFilter.value;

                fetch('{{ url('/filter-events') }}', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute(
                                'content')
                        },
                        body: JSON.stringify({
                            category_id: selectedCategory,
                            date: currentDate.toISOString().slice(0, 10)
                        })
                    })
                    .then(response => response.json())
                    .then(data => {
                        const holidays = data.events.map(event => event.date);
                        generateCalendar(currentDate, holidays);
                    })
                    .catch(error => console.error('Error:', error));
            }

            function showModal(date) {
                fetch('{{ url('/event-details') }}', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute(
                                'content')
                        },
                        body: JSON.stringify({
                            date: date,
                            category_id: categoryFilter.value
                        })
                    })
                    .then(response => response.json())
                    .then(data => {
                        modalDate.innerHTML = `Kegiatan pada ${date}`;
                        modalContent.innerHTML = '';
                        data.events.forEach(event => {
                            const eventDiv = document.createElement('div');
                            eventDiv.innerHTML = `
                            <h5>${event.title}</h5>
                            <p>${event.description}</p>
                            <p>${event.date}</p>
                            ${event.image ? `<img src="${event.image}" alt="Gambar Kegiatan" style="max-width: 100%; height: auto;">` : ''}
                            <a href="${event.link}" class="copy-button" target="_blank">Lihat Kegiatan</a>
                            <hr>
                        `;
                            modalContent.appendChild(eventDiv);
                        });
                        setupPagination(data.totalPages, data.currentPage);
                        modal.style.display = 'block';
                    })
                    .catch(error => console.error('Error:', error));
            }

            function showModal(date) {
                fetch('{{ url('/event-details') }}', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json',
                            'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute(
                                'content')
                        },
                        body: JSON.stringify({
                            date: date,
                            category_id: categoryFilter.value
                        })
                    })
                    .then(response => response.json())
                    .then(data => {
                        modalDate.innerHTML = `Kegiatan pada ${date}`;
                        modalContent.innerHTML = '';
                        data.events.forEach(event => {
                            const eventDiv = document.createElement('div');
                            eventDiv.innerHTML = `
                <h5>${event.nama_kegiatan}</h5>
                  ${event.dokumentasi ? `<img src="/dokumentasi_kegiatan/${event.dokumentasi}" alt="Gambar Kegiatan" style="max-width: 100%; height: auto;">` : ''}
                <p>${event.deskripsi}</p>
                <p>${date}</p>
              
                <hr>
            `;
                            modalContent.appendChild(eventDiv);
                        });
                        // setupPagination(data.totalPages, data.currentPage);
                        modal.style.display = 'block';
                    })
                    .catch(error => console.error('Error:', error));
            }


            // function setupPagination(totalPages, currentPage) {
            //     paginationControls.innerHTML = '';
            //     for (let i = 1; i <= totalPages; i++) {
            //         const button = document.createElement('button');
            //         button.innerHTML = i;
            //         button.className = i === currentPage ? 'active' : '';
            //         button.onclick = () => {
            //             fetchEventsAndUpdateCalendar(i);
            //         };
            //         paginationControls.appendChild(button);
            //     }
            // }

            function closeModal() {
                modal.style.display = 'none';
            }

            window.onclick = function(event) {
                if (event.target == modal) {
                    closeModal();
                }
            }

            document.getElementById('prev').addEventListener('click', () => changeMonth(-1));
            document.getElementById('next').addEventListener('click', () => changeMonth(1));
            categoryFilter.addEventListener('change', fetchEventsAndUpdateCalendar);

            fetchEventsAndUpdateCalendar();
        });
    </script>
</body>

</html>
