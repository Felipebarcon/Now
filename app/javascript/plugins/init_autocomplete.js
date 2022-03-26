import places from 'places.js';

const initLocationAutocomplete = () => {
  const locationInput = document.getElementById('event-location');
  if (locationInput) {
    places({ container: locationInput });
  }
};



export { initLocationAutocomplete };
