<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#10b981">
<meta name="description" content="Domótica premium inteligente para hogares modernos.">
<title>DomoticAL — Smart Home</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@24,400,0,0" />

<style>
:root{
    --primary:#10b981;
    --primary-dark:#059669;
    --surface:#f8fafc;
    --card:#ffffffd9;
    --text:#0f172a;
    --muted:#64748b;
    --danger:#ef4444;
    --radius-xl:28px;
    --radius-lg:18px;
    --radius-md:14px;
    --pill:999px;
    --shadow-sm:0 4px 12px rgba(0,0,0,.04);
    --shadow-lg:0 12px 30px rgba(0,0,0,.08);
    --transition:.28s ease;
}

*{
    box-sizing:border-box;
    margin:0;
    padding:0;
}

html{
    scroll-behavior:smooth;
    text-rendering:optimizeLegibility;
    -webkit-font-smoothing:antialiased;
}

body{
    font-family:'Outfit',sans-serif;
    background:var(--surface);
    color:var(--text);
    overflow-x:hidden;
    min-height:100vh;
}

body.modal-open{
    overflow:hidden;
}

img{
    max-width:100%;
    display:block;
}

button,input,textarea,select{
    font:inherit;
}

button{
    border:none;
    background:none;
    cursor:pointer;
}

.ambient-bg{
    position:fixed;
    inset:0;
    z-index:-1;
    background:
        radial-gradient(circle at top left,#d1fae5 0%,transparent 35%),
        radial-gradient(circle at bottom right,#a7f3d0 0%,transparent 35%);
}

.glass{
    background:rgba(255,255,255,.8);
    backdrop-filter:saturate(180%) blur(12px);
    -webkit-backdrop-filter:saturate(180%) blur(12px);
    border:1px solid rgba(255,255,255,.5);
}

header{
    position:sticky;
    top:0;
    z-index:100;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:18px;
    padding:16px 5%;
    margin:16px;
    border-radius:var(--radius-xl);
    box-shadow:var(--shadow-sm);
}

.logo{
    display:flex;
    align-items:center;
    gap:10px;
    font-weight:700;
    font-size:1.4rem;
    color:var(--primary-dark);
    text-decoration:none;
}

.search-wrapper{
    flex:1;
    display:flex;
    align-items:center;
    gap:12px;
    max-width:650px;
}

.search-box{
    position:relative;
    flex:1;
}

.search-box input{
    width:100%;
    border:none;
    padding:14px 20px 14px 50px;
    border-radius:var(--pill);
    background:#fff;
    outline:none;
    transition:border-color var(--transition),box-shadow var(--transition);
}

.search-box input:focus{
    box-shadow:0 0 0 4px rgba(16,185,129,.15);
}

.search-box .material-symbols-rounded{
    position:absolute;
    left:16px;
    top:50%;
    transform:translateY(-50%);
    color:var(--muted);
}

.btn-filter,
.btn-main,
.btn-add{
    display:flex;
    align-items:center;
    justify-content:center;
    gap:8px;
    border-radius:var(--pill);
    transition:transform var(--transition),background-color var(--transition),color var(--transition),box-shadow var(--transition);
}

.btn-filter:hover,
.btn-main:hover,
.btn-add:hover{
    transform:translateY(-2px);
}

.btn-filter{
    padding:14px 18px;
    background:#dcfce7;
    color:var(--primary-dark);
    font-weight:600;
}

.header-actions{
    display:flex;
    gap:10px;
}

.icon-btn{
    width:48px;
    height:48px;
    border-radius:50%;
    display:grid;
    place-items:center;
    position:relative;
    transition:background-color var(--transition),transform var(--transition);
}

.icon-btn:hover{
    background:rgba(0,0,0,.05);
}

.badge{
    position:absolute;
    top:2px;
    right:2px;
    width:20px;
    height:20px;
    border-radius:50%;
    display:grid;
    place-items:center;
    font-size:.7rem;
    background:var(--danger);
    color:#fff;
    font-weight:700;
}

main{
    display:grid;
    grid-template-columns:repeat(auto-fill,minmax(280px,1fr));
    gap:24px;
    padding:24px 5% 80px;
}

.card{
    border-radius:var(--radius-xl);
    overflow:hidden;
    box-shadow:var(--shadow-sm);
    transition:transform var(--transition),box-shadow var(--transition);
    content-visibility:auto;
    contain-intrinsic-size:420px;
}

.card:hover{
    transform:translateY(-6px);
    box-shadow:var(--shadow-lg);
}

.card-img{
    width:100%;
    aspect-ratio:16/10;
    object-fit:cover;
    background:#fff;
}

.card-body{
    padding:20px;
    display:flex;
    flex-direction:column;
    gap:14px;
}

.tags{
    display:flex;
    flex-wrap:wrap;
    gap:8px;
}

.tag{
    padding:6px 12px;
    border-radius:var(--pill);
    font-size:.72rem;
    font-weight:700;
}

.tag.room{
    background:#dcfce7;
    color:#166534;
}

.tag.type{
    background:#dbeafe;
    color:#1d4ed8;
}

.card-title{
    font-size:1.15rem;
    font-weight:700;
    line-height:1.3;
}

.card-footer{
    display:flex;
    align-items:center;
    justify-content:space-between;
    margin-top:auto;
}

.price{
    font-size:1.3rem;
    font-weight:700;
}

.btn-add,
.btn-main{
    background:var(--primary);
    color:#fff;
    padding:12px 20px;
    font-weight:600;
}

.overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.4);
    backdrop-filter:blur(4px);
    display:flex;
    justify-content:center;
    align-items:center;
    visibility:hidden;
    opacity:0;
    transition:opacity var(--transition);
    z-index:1000;
}

.overlay.active{
    visibility:visible;
    opacity:1;
}

.modal{
    width:min(920px,94vw);
    max-height:90vh;
    overflow:auto;
    border-radius:var(--radius-xl);
    transform:translateY(20px);
    transition:transform var(--transition);
}

.overlay.active .modal{
    transform:translateY(0);
}

.detail-grid{
    display:grid;
    grid-template-columns:1fr 1fr;
}

.detail-image{
    min-height:520px;
    object-fit:cover;
}

.detail-content{
    padding:34px;
    display:flex;
    flex-direction:column;
    gap:22px;
}

.drawer-overlay{
    position:fixed;
    inset:0;
    background:rgba(0,0,0,.4);
    opacity:0;
    visibility:hidden;
    transition:opacity var(--transition);
    z-index:1200;
}

.drawer-overlay.active{
    visibility:visible;
    opacity:1;
}

.drawer{
    position:fixed;
    right:-420px;
    top:0;
    width:100%;
    max-width:420px;
    height:100vh;
    background:#fff;
    z-index:1300;
    transition:right var(--transition);
    display:flex;
    flex-direction:column;
}

.drawer.active{
    right:0;
}

.drawer-header,
.drawer-footer{
    padding:24px;
    border-bottom:1px solid #eee;
}

.drawer-footer{
    margin-top:auto;
    border-top:1px solid #eee;
}

.drawer-content{
    flex:1;
    overflow:auto;
    padding:24px;
}

.cart-item{
    display:flex;
    gap:14px;
    margin-bottom:20px;
}

.cart-item img{
    width:80px;
    height:80px;
    border-radius:16px;
    object-fit:cover;
}

.qty{
    display:flex;
    align-items:center;
    gap:10px;
    background:#f1f5f9;
    width:max-content;
    padding:6px 10px;
    border-radius:var(--pill);
    margin-top:8px;
}

.toast{
    position:fixed;
    left:50%;
    bottom:30px;
    transform:translateX(-50%) translateY(100px);
    background:#111827;
    color:#fff;
    padding:14px 24px;
    border-radius:var(--pill);
    display:flex;
    align-items:center;
    gap:8px;
    transition:transform var(--transition);
    z-index:3000;
}

.toast.active{
    transform:translateX(-50%) translateY(0);
}

.admin-grid{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:20px;
}

.input,
textarea,
select{
    width:100%;
    border:1px solid #ddd;
    padding:14px;
    border-radius:16px;
    outline:none;
}

.input:focus,
textarea:focus,
select:focus{
    border-color:var(--primary);
}

.section{
    padding:24px;
    border-radius:var(--radius-xl);
    background:#fff;
}

.empty{
    grid-column:1/-1;
    text-align:center;
    padding:80px 20px;
    color:var(--muted);
}

@media(max-width:900px){
    .detail-grid,
    .admin-grid{
        grid-template-columns:1fr;
    }

    .detail-image{
        min-height:300px;
    }
}

@media(max-width:768px){
    header{
        flex-wrap:wrap;
    }

    .search-wrapper{
        order:3;
        width:100%;
        max-width:none;
    }
}

@media(prefers-reduced-motion:reduce){
    *{
        animation:none!important;
        transition:none!important;
        scroll-behavior:auto!important;
    }
}
</style>
</head>
<body>

<div class="ambient-bg"></div>

<header class="glass">
    <a href="#" class="logo">
        <span class="material-symbols-rounded">nest_eco_leaf</span>
        DomoticAL
    </a>

    <div class="search-wrapper">
        <div class="search-box">
            <span class="material-symbols-rounded">search</span>
            <input id="searchInput" type="text" placeholder="Buscar dispositivos inteligentes...">
        </div>

        <button class="btn-filter" data-open="filtersModal">
            <span class="material-symbols-rounded">tune</span>
            Filtros
        </button>
    </div>

    <div class="header-actions">
        <button class="icon-btn" data-open-cart>
            <span class="material-symbols-rounded">shopping_bag</span>
            <span class="badge" id="cartCount">0</span>
        </button>

        <button class="icon-btn" data-open="adminModal">
            <span class="material-symbols-rounded">settings</span>
        </button>
    </div>
</header>

<main id="productGrid"></main>

<div class="overlay" id="detailModal">
    <div class="modal glass" id="detailContent"></div>
</div>

<div class="overlay" id="adminModal">
    <div class="modal glass" style="padding:30px;">
        <div style="display:flex;justify-content:space-between;align-items:center;margin-bottom:24px;">
            <h2>Panel de Administración</h2>
            <button data-close="adminModal">
                <span class="material-symbols-rounded">close</span>
            </button>
        </div>

        <div class="admin-grid">
            <div class="section">
                <div style="display:grid;gap:16px;">
                    <input class="input" id="title" placeholder="Título">
                    <textarea rows="4" id="desc" placeholder="Descripción"></textarea>
                    <input class="input" type="number" id="price" placeholder="Precio">
                    <input class="input" id="img" placeholder="URL Imagen">
                    <button class="btn-main" id="saveProduct">Guardar Producto</button>
                </div>
            </div>

            <div class="section">
                <div id="adminProducts"></div>
            </div>
        </div>
    </div>
</div>

<div class="drawer-overlay" id="drawerOverlay"></div>

<aside class="drawer" id="cartDrawer">
    <div class="drawer-header">
        <h2>Tu cesta</h2>
    </div>

    <div class="drawer-content" id="cartContent"></div>

    <div class="drawer-footer" id="cartFooter"></div>
</aside>

<div class="toast" id="toast"></div>

<script type="module">
import { initializeApp } from 'https://www.gstatic.com/firebasejs/11.6.1/firebase-app.js';
import { getFirestore, collection, onSnapshot, setDoc, doc } from 'https://www.gstatic.com/firebasejs/11.6.1/firebase-firestore.js';

const DOM = {
    grid:document.getElementById('productGrid'),
    search:document.getElementById('searchInput'),
    cartCount:document.getElementById('cartCount'),
    cartContent:document.getElementById('cartContent'),
    cartFooter:document.getElementById('cartFooter'),
    detailModal:document.getElementById('detailModal'),
    detailContent:document.getElementById('detailContent'),
    drawer:document.getElementById('cartDrawer'),
    drawerOverlay:document.getElementById('drawerOverlay'),
    toast:document.getElementById('toast'),
    adminProducts:document.getElementById('adminProducts')
};

const fallbackImage='https://images.unsplash.com/photo-1558089687-f282ffcbc126?w=600';

const state={
    products:[],
    cart:JSON.parse(localStorage.getItem('cart')||'[]'),
    filters:{query:''},
    editId:null
};

const firebaseConfig={
    apiKey:'AIzaSyBK6BsmANXLfwtI8U0gb3MuKTcuCMoYkls',
    authDomain:'domotical-680de.firebaseapp.com',
    projectId:'domotical-680de',
    storageBucket:'domotical-680de.firebasestorage.app',
    messagingSenderId:'923219132599',
    appId:'1:923219132599:web:0bde6c03a9ffb52fe0cd32'
};

const app=initializeApp(firebaseConfig);
const db=getFirestore(app);

function escapeHTML(str=''){
    return str
        .replaceAll('&','&amp;')
        .replaceAll('<','&lt;')
        .replaceAll('>','&gt;')
        .replaceAll('"','&quot;')
        .replaceAll("'",'&#039;');
}

function debounce(fn,delay=250){
    let t;
    return (...args)=>{
        clearTimeout(t);
        t=setTimeout(()=>fn(...args),delay);
    };
}

function toast(message,icon='check_circle'){
    DOM.toast.innerHTML=`<span class="material-symbols-rounded">${icon}</span>${message}`;
    DOM.toast.classList.add('active');

    clearTimeout(window.toastTimer);
    window.toastTimer=setTimeout(()=>{
        DOM.toast.classList.remove('active');
    },3000);
}

function renderProducts(products){
    if(!products.length){
        DOM.grid.innerHTML=`
            <div class="empty">
                <span class="material-symbols-rounded" style="font-size:60px;">inventory_2</span>
                <h2>No hay resultados</h2>
            </div>
        `;
        return;
    }

    const fragment=document.createDocumentFragment();

    products.forEach(product=>{
        const card=document.createElement('article');
        card.className='card glass';
        card.dataset.product=product.id;

        card.innerHTML=`
            <img
                class="card-img"
                src="${escapeHTML(product.img||fallbackImage)}"
                loading="lazy"
                decoding="async"
                onerror="this.src='${fallbackImage}'"
            >

            <div class="card-body">
                <div class="tags">
                    ${(product.rooms||[]).map(r=>`<span class="tag room">${escapeHTML(r)}</span>`).join('')}
                    ${(product.types||[]).map(t=>`<span class="tag type">${escapeHTML(t)}</span>`).join('')}
                </div>

                <h3 class="card-title">${escapeHTML(product.title)}</h3>

                <div class="card-footer">
                    <span class="price">${Number(product.price).toFixed(2)}€</span>

                    <button class="btn-add" data-add-cart="${product.id}">
                        <span class="material-symbols-rounded">add_shopping_cart</span>
                        Añadir
                    </button>
                </div>
            </div>
        `;

        fragment.appendChild(card);
    });

    DOM.grid.replaceChildren(fragment);
}

function applyFilters(){
    const q=state.filters.query.toLowerCase();

    const filtered=state.products.filter(p=>{
        return (
            p.title.toLowerCase().includes(q) ||
            p.desc.toLowerCase().includes(q)
        );
    });

    renderProducts(filtered);
}

function openModal(id){
    document.body.classList.add('modal-open');
    document.getElementById(id).classList.add('active');
}

function closeModal(id){
    document.body.classList.remove('modal-open');
    document.getElementById(id).classList.remove('active');
}

function openCart(){
    document.body.classList.add('modal-open');
    DOM.drawer.classList.add('active');
    DOM.drawerOverlay.classList.add('active');
}

function closeCart(){
    document.body.classList.remove('modal-open');
    DOM.drawer.classList.remove('active');
    DOM.drawerOverlay.classList.remove('active');
}

function renderCart(){
    DOM.cartCount.textContent=state.cart.reduce((a,b)=>a+b.qty,0);

    if(!state.cart.length){
        DOM.cartContent.innerHTML=`
            <div class="empty">
                <span class="material-symbols-rounded" style="font-size:60px;">shopping_cart</span>
                <p>Tu carrito está vacío</p>
            </div>
        `;

        DOM.cartFooter.innerHTML='';
        return;
    }

    DOM.cartContent.innerHTML=state.cart.map(item=>`
        <div class="cart-item">
            <img src="${escapeHTML(item.img)}" loading="lazy">

            <div>
                <strong>${escapeHTML(item.title)}</strong>
                <p>${Number(item.price).toFixed(2)}€</p>

                <div class="qty">
                    <button data-qty="minus" data-id="${item.id}">-</button>
                    <span>${item.qty}</span>
                    <button data-qty="plus" data-id="${item.id}">+</button>
                </div>
            </div>
        </div>
    `).join('');

    const total=state.cart.reduce((a,b)=>a+b.price*b.qty,0);

    DOM.cartFooter.innerHTML=`
        <div style="display:flex;justify-content:space-between;margin-bottom:20px;">
            <span>Total</span>
            <strong>${total.toFixed(2)}€</strong>
        </div>

        <button class="btn-main" id="checkoutBtn">
            Finalizar pedido
        </button>
    `;

    localStorage.setItem('cart',JSON.stringify(state.cart));
}

function addToCart(id){
    const product=state.products.find(p=>p.id===id);

    if(!product)return;

    const existing=state.cart.find(i=>i.id===id);

    if(existing){
        existing.qty++;
    }else{
        state.cart.push({...product,qty:1});
    }

    renderCart();
    toast('Producto añadido');
}

function changeQty(id,type){
    const item=state.cart.find(i=>i.id===id);
    if(!item)return;

    if(type==='plus')item.qty++;
    else item.qty--;

    if(item.qty<=0){
        state.cart=state.cart.filter(i=>i.id!==id);
    }

    renderCart();
}

function openDetail(id){
    const p=state.products.find(x=>x.id===id);
    if(!p)return;

    DOM.detailContent.innerHTML=`
        <div class="detail-grid">
            <img
                class="detail-image"
                src="${escapeHTML(p.img)}"
                loading="lazy"
            >

            <div class="detail-content">
                <div>
                    <div class="tags" style="margin-bottom:16px;">
                        ${(p.rooms||[]).map(r=>`<span class="tag room">${escapeHTML(r)}</span>`).join('')}
                        ${(p.types||[]).map(t=>`<span class="tag type">${escapeHTML(t)}</span>`).join('')}
                    </div>

                    <h1 style="font-size:2rem;margin-bottom:16px;">
                        ${escapeHTML(p.title)}
                    </h1>

                    <div style="font-size:2rem;font-weight:700;color:var(--primary-dark);margin-bottom:20px;">
                        ${Number(p.price).toFixed(2)}€
                    </div>

                    <p style="line-height:1.7;color:var(--muted);">
                        ${escapeHTML(p.desc)}
                    </p>
                </div>

                <button class="btn-main" data-add-cart="${p.id}">
                    Añadir a la cesta
                </button>
            </div>
        </div>
    `;

    openModal('detailModal');
}

function renderAdmin(){
    DOM.adminProducts.innerHTML=state.products.map(p=>`
        <div style="display:flex;justify-content:space-between;align-items:center;padding:12px 0;border-bottom:1px solid #eee;">
            <div>
                <strong>${escapeHTML(p.title)}</strong>
                <p>${Number(p.price).toFixed(2)}€</p>
            </div>

            <button data-edit="${p.id}">
                <span class="material-symbols-rounded">edit</span>
            </button>
        </div>
    `).join('');
}

async function saveProduct(){
    const title=document.getElementById('title').value.trim();
    const desc=document.getElementById('desc').value.trim();
    const price=Number(document.getElementById('price').value);
    const img=document.getElementById('img').value.trim() || fallbackImage;

    if(!title || !price){
        toast('Datos inválidos','warning');
        return;
    }

    const product={
        id:state.editId || crypto.randomUUID(),
        title,
        desc,
        price,
        img,
        rooms:['General'],
        types:['Smart Home']
    };

    const index=state.products.findIndex(p=>p.id===product.id);

    if(index>-1){
        state.products[index]=product;
    }else{
        state.products.unshift(product);
    }

    await setDoc(doc(db,'products',product.id),product);

    applyFilters();
    renderAdmin();

    document.getElementById('title').value='';
    document.getElementById('desc').value='';
    document.getElementById('price').value='';
    document.getElementById('img').value='';

    state.editId=null;

    toast('Producto guardado');
}

function bindEvents(){
    document.addEventListener('click',e=>{

        const modal=e.target.dataset.open;
        if(modal)openModal(modal);

        const close=e.target.dataset.close;
        if(close)closeModal(close);

        const product=e.target.closest('[data-product]');
        if(product && !e.target.closest('[data-add-cart]')){
            openDetail(product.dataset.product);
        }

        const add=e.target.closest('[data-add-cart]');
        if(add){
            addToCart(add.dataset.addCart);
        }

        if(e.target.matches('[data-open-cart]')){
            openCart();
        }

        if(e.target===DOM.drawerOverlay){
            closeCart();
        }

        if(e.target===DOM.detailModal){
            closeModal('detailModal');
        }

        const qty=e.target.dataset.qty;
        if(qty){
            changeQty(e.target.dataset.id,qty);
        }

        const edit=e.target.closest('[data-edit]');
        if(edit){
            const product=state.products.find(p=>p.id===edit.dataset.edit);
            if(!product)return;

            state.editId=product.id;
            document.getElementById('title').value=product.title;
            document.getElementById('desc').value=product.desc;
            document.getElementById('price').value=product.price;
            document.getElementById('img').value=product.img;
        }

        if(e.target.id==='checkoutBtn'){
            state.cart=[];
            renderCart();
            closeCart();
            toast('Pedido realizado');
        }
    });

    DOM.search.addEventListener('input',debounce(e=>{
        state.filters.query=e.target.value;
        applyFilters();
    }));

    document.getElementById('saveProduct').addEventListener('click',saveProduct);
}

function initFirebase(){
    onSnapshot(collection(db,'products'),snapshot=>{
        const products=[];

        snapshot.forEach(doc=>{
            products.push(doc.data());
        });

        state.products=products;

        applyFilters();
        renderAdmin();
    });
}

function boot(){
    bindEvents();
    renderCart();
    initFirebase();
}

boot();

</script>

</body>
</html>
