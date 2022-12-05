// 질문 9개
const qnaList = [
    {
        q: '얼마나 배고픈가요?',
        a: [
          { answer: '출출하다', type: [2,5,6,13] },
          { answer: '완전 배고프다', type: [0,1,2,3,4,6,7,8,9,10,11,12,14,15] },
      
        ]
      },
      {
        q: '어떤 종류의 음식이 땡기나요? ',
        a: [
          { answer: '양식', type: [5,6,7,8,11,13,14] },
          { answer: '일식', type: [0,1,12] },
          { answer: '중식', type: [3,4,9] },
          { answer: '한식', type: [2,10,15] },
  
        ]
      },
      {
        q: '고기는 어떠세요?',
        a: [
          { answer: '좋다!', type: [8,14,15 ] },
          { answer: '별로...', type: [0,1,2,9,10,11,12] },
        ]
      },
      {
        q: '면 요리는 어떠세요?',
        a: [
          { answer: '좋다!', type: [9,10,11] },
          { answer: '안 땡긴다...', type: [0,2,4,5,6,7,8,12,13,14,15] },
        ]
      },
      {
        q: '기름진 음식을 좋아하시나요?',
        a: [
          { answer: '기름진 음식이 좋다', type: [1,3,6,7,8,9,11,14,15] },
          { answer: '건강식이 더 좋다', type: [0,2,4,5,10,12,13] },
        ]
      },
      {
        q: '따뜻한 음식과 차가운 음식 중 어떤 것을 선호 하시나요?',
        a: [
          { answer: '따뜻한 음식', type: [1,3,4,6,7,8,9,11,12,14,15] },
          { answer: '차가운 음식', type: [0,5,10,13] },
        ]
      },
      {
        q: '기념일 같은 특별한 날인가요?',
        a: [
          { answer: '분위기 있는 곳에서 먹고싶다.', type: [1,2,5,6,7,8,9,10,12,13 ] },
          { answer: '딱히..? ', type: [0,3,4,11,14,15 ] },
        ]
      },
      {
        q: '음식을 먹을 장소는 어디신가요?',
        a: [
          { answer: '집', type: [0,6,7,8,9 ] },
          { answer: '피크닉', type: [2,5,6,7,8,13]},
          { answer: '식당', type: [1,3,4,9,10,11,12,14,15] },
        ]
      },
    
      {
        q: '1인 1메뉴 vs 같이 먹는다',
        a: [
          { answer: '1인 1메뉴', type: [0,1,2,5,6,9,10,11,12,14 ] },
          { answer: '가운데 놓고 같이 먹는다', type: [3,4,7,8,15] },
        ]
      }
        
  ]
  // 음식 15개 결과
  const infoList = [
    {
      name: '초밥',
      desc: '친구에게 공유하세요'
    },
    {
      name: '라멘',
      desc: '친구에게 공유하세요'
    },
    {
      name: '도시락',
      desc: '친구에게 공유하세요'
    },
    {
      name: '훠궈',
      desc: '친구에게 공유하세요'
    },
    {
      name: '딤섬',
      desc: '친구에게 공유하세요'
    },
    {
      name: '샌드위치',
      desc: '친구에게 공유하세요'
    },
    {
      name: '햄버거',
      desc: '친구에게 공유하세요'
    },
    {
      name: '피자',
      desc: '친구에게 공유하세요'
    },
    {
      name: '치킨',
      desc: '친구에게 공유하세요'
    },
    {
      name: '짜장면',
      desc: '친구에게 공유하세요'
    },
    {
      name: '냉면',
      desc: '친구에게 공유하세요'
    },
    {
      name: '스파게티',
      desc: '친구에게 공유하세요'
    },
    {
      name: '카레',
      desc: '친구에게 공유하세요'
    },
    {
      name: '샐러드',
      desc: '친구에게 공유하세요'
    },
    {
      name: '스테이크',
      desc: '친구에게 공유하세요'
    },
    {
      name: '고기구이',
      desc: '친구에게 공유하세요'
    },
  ]