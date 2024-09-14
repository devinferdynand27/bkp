@php
    use App\Models\Tb_menu;
    use App\Models\Tb_submenu;
    $text = Tb_menu::where('slug','sub-men-testing1')->first();
    $sub_text = Tb_submenu::where('slug','sub-men-testing1')->first();
@endphp
<div>
    {{$sub_text}}
    helo
    <h5 class="text--primary mb-4 mt-4">Layanan yang banyak diakses</h5>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi rerum sit libero deserunt? At cupiditate illum ad excepturi, fuga harum laudantium quo consequuntur tempora adipisci. Eos, eligendi aliquid? Quae, laborum tenetur tempore aliquid architecto sint ipsa dicta at similique consectetur animi, ipsam error odio iste natus fuga. Alias quidem veritatis mollitia ipsum ea. Labore unde blanditiis ad pariatur animi doloribus rem laboriosam, facere tempore facilis accusamus itaque non, quas ullam fuga cum architecto aliquam libero voluptatibus minus provident. Cumque autem tempora quod officia doloribus sed eius excepturi cupiditate quasi perspiciatis quas amet in aliquam molestiae enim magnam error, quae id!</p>
</div>