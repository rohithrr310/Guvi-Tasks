
async function fetchdata() {
    return fetch('https://restcountries.com/v3.1/all')
        .then(response => response.json())

}
document.querySelector('.card').style.display = "none";
function creation() {
    fetchdata()
        .then(data => {
            data.forEach(element => {
                var listitems = document.createElement('li')
                listitems.innerHTML = element.name.common;
                listitems.setAttribute('class', 'list-group-item list-group-item-dark')
                listitems.addEventListener('click', () => {
                    document.querySelector('.card').style.display = "block";
                    document.getElementById('header').innerHTML = `${element.name.common}`;
                    let img = document.querySelector('.image');
                    img.setAttribute('src', `${element.flags.svg}`)
                    document.querySelector('.officialname').innerHTML = `Official-Name:${element.name.official}`;
                    document.querySelector('.capital').innerHTML = `capital:${element.capital}`;
                    document.querySelector('.region').innerHTML = `region:${element.region}`;
                    document.querySelector('.subregion').innerHTML = `subregion:${element.subregion}`;
                    document.querySelector('.language').innerHTML = `continents:${element.continents}`;
                    document.querySelector('.countrycode').innerHTML = `countrycode:${element.cca3}`;
                    document.querySelector('.population').innerHTML = `population':${element.population}`;
                    let map = document.querySelector('.map')
                    map.setAttribute('href', `${element.maps.googleMaps}`)
                    map.setAttribute('title', 'map')

                })
                document.querySelector('#ul').append(listitems);
            })
        }).catch(error => {
            alert(error)


        })
}
creation()