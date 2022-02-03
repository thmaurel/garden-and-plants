import $ from 'jquery';
import "select2";

const initSelect = () => {
  $(document).ready(function () {
    console.log($('.multi-select'))
    $('.multi-select').select2();
  });
}

export {initSelect};
