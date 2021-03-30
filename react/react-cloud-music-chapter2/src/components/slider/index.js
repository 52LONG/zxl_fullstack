import React,{useEffect} from 'react';
import Swiper from "swiper";
import {SliderContainer} from './style'
import "swiper/dist/css/swiper.css";
function Slider(props) {
  const { bannerList } = props
  useEffect(()=>{
      if(bannerList.length){
          new Swiper(".slider-container",{
              loop:true,
              autoplay:{
                delay:3000,
                disableOnInteraction:false
              },
              pagination:{el:'slider-paginnation'}
          })
      }
  })
  return (
      <SliderContainer>
    <div className="slider-container">
      <div className="swiper-wrapper">
        {
          bannerList.map((slider, index) => {
            return (
              <div className="swiper-slide" key={index}>
                <div className="slider-nav">
                  <img src={slider.imageUrl}
                    width="100%"
                    height="100%"
                  alt="推荐"/>
                </div>
              </div>
            )
          })
        }
        <div className="swiper-pagination"></div>
      </div>
    </div>
    </SliderContainer> 
    )
}

export default Slider;
