import type { NextPage } from "next"
import Head from "next/head"
import Image from "next/image"
import styles from "../styles/Home.module.css"

const Home: NextPage = () => {
  return (
    <div className="flex h-screen bg-gradient-to-b from-blue-500 to-blue-900">
      <Head>
        <title>Wavey</title>
        <meta
          name="description"
          content="Ethereum based donations to save the oceans"
        />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <div className="flex flex-col justify-center w-auto px-8 space-y-8 h-1/2 items-center my-auto mx-auto">
        <h1 className="text-9xl text-white font-extrabold ">
          Hey, we are{" "}
          <span className="bg-clip-text text-transparent bg-gradient-to-r from-blue-300 to-blue-400 ">
            Waves
          </span>{" "}
          🌊
        </h1>
        <h1 className="text-4xl w-1/2 text-center font-extrabold text-white ">
          We believe we can do more to save the oceans, join the waitlist whilst
          we build a platform for you to donate
        </h1>
        <button className="rounded-md bg-white hover:bg-black duration-500 hover:scale-110 hover:text-white w-1/2 py-3 font-extrabold text-xl text-blue-500">
          Join the waitlist
        </button>
      </div>
    </div>
  )
}

export default Home
