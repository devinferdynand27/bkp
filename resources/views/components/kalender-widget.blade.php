@php
      use App\Models\KategoriKegiatan;
      $kategori = KategoriKegiatan::orderBy('created_at','asc')->get();
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
        <span class="close" onclick="closeModal()">&times;</span>
        <h4 id="modalDate"></h4><br><br>
        <div id="modalContent"></div>
        <div id="paginationControls" class="pagination"></div>
    </div>
</div>




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
</style>

<style>
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

@php
    use App\Models\KalenderKegiatan;
    $kalenderKegiatan = KalenderKegiatan::all();
    $waktuKegiatan = $kalenderKegiatan->pluck('waktu_kegiatan')->map(function ($datetime) {
        return \Carbon\Carbon::parse($datetime)->format('Y-m-d');
    });
@endphp

<script>
    let currentDate = new Date();
const monthYear = document.getElementById('monthYear');
const calendarBody = document.getElementById('calendarBody');
const holidays = @json($waktuKegiatan);
const modal = document.getElementById('modal');
const modalDate = document.getElementById('modalDate');
const modalContent = document.getElementById('modalContent');
const categoryFilter = document.getElementById('categoryFilter');

let selectedCategory = ''; // To store the selected category

categoryFilter.addEventListener('change', function() {
    selectedCategory = this.value;
    console.log('Selected category:', selectedCategory); // Debug log
    generateCalendar(currentDate);
});

function generateCalendar(date) {
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
                const currentDateStr = `${date.getFullYear()}-${String(date.getMonth() + 1).padStart(2, '0')}-${String(day).padStart(2, '0')}`;
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
    generateCalendar(currentDate);
}

function showModal(dateStr, page = 1) {
    const url = `/api/calendar-events/${dateStr}?page=${page}&category=${selectedCategory}`;
    console.log('Fetching from URL:', url); // Debug log
    fetch(url)
        .then(response => response.json())
        .then(data => {
            modalDate.innerHTML = new Date(dateStr).toLocaleDateString('id-ID', {
                day: 'numeric',
                month: 'long',
                year: 'numeric'
            });

            let content = data.content || `No details available for ${dateStr}`;

            if (data.links && data.links.length > 0) {
                content += '<form id="linksForm">';
                data.links.forEach(link => {
                    content += `
                        <div style="margin-bottom: 10px;">
                            <input type="text" value="${link}" readonly style="width: 80%; padding: 5px;"/>
                            <button type="button" class="copy-button" onclick="copyLink('${link}')">Copy Link</button>
                        </div>
                    `;
                });
                content += '</form>';
            }

            modalContent.innerHTML = content;

            // Handle pagination controls
            let paginationControls = '';

            // Previous button
            if (data.pagination.previous) {
                paginationControls +=
                    `<button onclick="showModal('${dateStr}', ${data.pagination.current - 1})">Previous</button>`;
            }

            // Numbered buttons
            for (let i = 1; i <= data.pagination.last; i++) {
                if (i === data.pagination.current) {
                    paginationControls += `<button disabled>${i}</button>`;
                } else {
                    paginationControls += `<button onclick="showModal('${dateStr}', ${i})">${i}</button>`;
                }
            }

            // Next button
            if (data.pagination.next) {
                paginationControls +=
                    `<button onclick="showModal('${dateStr}', ${data.pagination.current + 1})">Next</button>`;
            }

            document.getElementById('paginationControls').innerHTML = paginationControls;

            modal.style.display = 'block';
        })
        .catch(error => {
            console.error('Error fetching event data:', error);
            modalDate.innerHTML = new Date(dateStr).toLocaleDateString('id-ID', {
                day: 'numeric',
                month: 'long',
                year: 'numeric'
            });
            modalContent.innerHTML = 'Error fetching event details.';
            document.getElementById('paginationControls').innerHTML = '';
            modal.style.display = 'block';
        });
}

function copyLink(link) {
    navigator.clipboard.writeText(link).then(() => {
        alert('Link copied to clipboard!');
    }, (err) => {
        console.error('Failed to copy link: ', err);
    });
}

function closeModal() {
    modal.style.display = 'none';
}

window.onclick = function(event) {
    if (event.target == modal) {
        closeModal();
    }
}

generateCalendar(currentDate);

</script>