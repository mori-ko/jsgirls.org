jsgirls.Avatar = function () {
  var imgs = document.getElementsByTagName('img');
  var gravatarImgs = [].filter.call(imgs, function (img) {
    return img.hasAttribute('data-gravatar-email');
  });
  gravatarImgs.forEach(function(img) {
    var email = img.getAttribute('data-gravatar-email');
    img.src = 'http://www.gravatar.com/avatar/' + md5(email);
    img.removeAttribute('data-gravatar-email');
  });
};