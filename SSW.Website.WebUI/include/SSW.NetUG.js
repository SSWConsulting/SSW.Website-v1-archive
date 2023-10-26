var module = angular.module("app", ["SSW.NetUG.Ctrl"]);

module.filter('toTrusted', function ($sce) {
    return function (val) {
        return $sce.trustAsHtml(val);
    };
});

module.filter('toTrustedUrl', function ($sce) {
    return function (val) {
        return $sce.trustAsResourceUrl(val);
    };
});

angular.module("SSW.NetUG.Ctrl", [])
    .controller("NetUGController", [
        "$scope", "$http", function ($scope, $http) {
            $scope.posts = [];
            $scope.showLatest = true;
            $scope.keyword = "";
            $scope.searchedPost = [];

            var getLatestPosts = function () {
                $.ajax({
                    url: "//tv.ssw.com/?s=&tag=user-group&feed=json",
                    dataType: "jsonp",
                    success: function (data) {
                        $scope.posts = data;
                        $scope.searchedPost = JSON.parse(JSON.stringify($scope.posts));
                        $scope.$apply();
                    }
                });
            };

            $scope.init = function () {
                getLatestPosts();
                var myScope = $scope;
                $('#keyword').on("keyup", function (e) {
                    if (e.keyCode === 27) {
                        $(this).val("");
                    }
                    myScope.keyword = $(this).val();
                    myScope.search();
                    myScope.$apply();
                });
                $("#searchBtn").on("click", function () {
                    myScope.keyword = $('#keyword').val();
                    myScope.search();
                    myScope.$apply();
                });
            };

            $scope.formatDate = function (dateString) {
                var dateOut = new Date(dateString);
                return dateOut;
            };

            $scope.replaceYouTubeUrlToEmbed = function (url) {
                return url.replace("watch?v=", "embed/");
            };

            $scope.search = function () {
                var keyword = $scope.keyword.toLowerCase();
                if (keyword) {
                    $scope.searchedPost = JSON.parse(JSON.stringify(_.filter($scope.posts, function (p) {
                        return p.title.toLowerCase().indexOf(keyword) > 0 || p.content.toLowerCase().indexOf(keyword) > 0;
                    })));
                } else {
                    $scope.searchedPost = JSON.parse(JSON.stringify($scope.posts));
                }
            };

            $scope.toggleSessions = function () {
                $scope.showLatest = !$scope.showLatest;
                $("#toggleSessions").html($scope.showLatest ? "Previous Sessions" : "Latest Sessions");
            };

            $scope.KeywordHighlight = function (text) {
                if (text) {
                    if ($scope.keyword) {
                        var re = new RegExp($scope.keyword, "gi");
                        var highlighted = text.replace(re, function (group) {
                            group = "<span class=\"highlight\">" + group + "</span>";
                            return group;
                        });
                        return highlighted;
                    }
                }
                return text;
            };
        }
    ]);