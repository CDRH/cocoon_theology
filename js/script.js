/* Javascript File */

$(document).ready(function(){
    $("a[rel^='prettyPhoto']").prettyPhoto({
    social_tools: false,
    theme: 'pp_default',
    show_title: true,
    deeplinking: false,
    overlay_gallery: false
    });
  });
  
  
$(document).ready(function(){

$(".reg").addClass("regBlock").hide(); 

    $("#regularized_text_switch_box .regularized_text_switch").toggle(function() {
        $(this).siblings(".showing_status").html('Showing regularized text');
        $(this).html('Turn off');
        $('.reg').show().addClass("regBlock");
    }, function() {
    	$(this).siblings(".showing_status").html('Not showing regularized text');
        $(this).html('Turn on');
        $('.reg').hide().removeClass("regBlock"); 
    });
 
  });
  

$(document).ready(function(){
    
    var globalTip = "";
  
    //Select all anchor tag with rel set to tooltip
    $('a[rel=tooltip]').mouseenter(function(e) {

        if( globalTip == "" ) {
            //Grab the title attribute's value and assign it to a variable
            var tip = $(this).attr('title');
            globalTip = tip;

            //Remove the title attribute's to avoid the native tooltip from the browser
            $(this).attr('title','');

            //Append the tooltip template and its value
            $(this).prepend('<div id="tooltip" style="text-decoration: none;">' + tip + '</div>');     

            //Set the X and Y axis of the tooltip
            $('#tooltip').css('top', e.pageY + 10 );
            $('#tooltip').css('left', e.pageX + 20 );

            //Show the tooltip with faceIn effect
            $('#tooltip').fadeIn('500');
            $('#tooltip').fadeTo('10',1);
        }
         
    }).mousemove(function(e) {
     
        //Keep changing the X and Y axis for the tooltip, thus, the tooltip move along with the mouse
        /*$('#tooltip').css('top', e.pageY + 10 );
        $('#tooltip').css('left', e.pageX + 20 );*/
         
    //}).mouseleave(function() {
    }).mouseout(function() {
        if( globalTip != "" ) {
            //Put back the title attribute's value
            /*$(this).attr('title',$('#tooltip').html());*/
        
            $(this).attr('title',globalTip);
        
            /*        $(this).attr('title',function() { 
                      $('#tooltip').html();
                      });
                      */     
            //Remove the appended tooltip template
            $(this).children('div#tooltip').remove();

            globalTip = "";
        }
    });

});
