import clsx from "clsx"
import React from "react"

import classes from "../Classes.json"


// SPECIFIC


export function AppName(props) {
  return <h1 { ...props } className={clsx(classes.appNames.base, classes.appNames.normal, props.className)}>
    <FissionLogo size={18} />
    <span className="inline-block ml-2">
      {props.children}
    </span>
  </h1>
}


export function LargeAppName(props) {
  return <h1 { ...props } className={clsx(classes.appNames.base, classes.appNames.large, props.className)}>
    <FissionLogo size={23} />
    <span className="inline-block ml-2" style={{ paddingLeft: "2px" }}>
      {props.children}
    </span>
  </h1>
}


/**
 * @params {Object} options
 * @param {number} options[].size - Height in pixels
 */
export function FissionLogo({ size }) {
  return <svg viewBox="0 0 641.09 640" height={size} width={size * (641.09 / 640)} xmlns="http://www.w3.org/2000/svg">
    <path d="m524.87 369.61c-30.59 0-58.73 11-79.53 33-33-17.13-69.74-30.59-108.89-40.38 4.9-13.45 18.35-55 24.47-73.4a493.34 493.34 0 0 0 61.17 7.34c77.08 6.11 135.81-8.57 173.74-42.82 36.7-34.26 45.26-80.75 45.26-112.56 0-77.04-62.39-140.66-140.69-140.66-4.9 0-48.94-3.67-89.32 28.14-25.69 20.8-58.72 106.44-83.19 177.4a374.46 374.46 0 0 1 -97.89-41.6v-7.34c0-62.39-51.37-113.73-113.77-113.73s-113.78 51.34-113.78 113.73 51.38 113.78 113.78 113.78c30.59 0 58.73-11 79.52-33 33 17.13 69.74 30.59 108.89 40.37-4.89 13.46-18.35 55.06-24.47 73.41a492.88 492.88 0 0 0 -61.17-7.37c-77.08-6.12-135.8 8.57-173.73 42.82-36.71 34.26-45.27 80.75-45.27 112.56 0 77.08 62.4 140.7 140.7 140.7h7.3a137.39 137.39 0 0 0 82-28.14c25.69-20.8 58.73-106.44 83.2-177.4a374.54 374.54 0 0 1 97.87 41.6v7.34c0 62.39 51.39 113.78 113.79 113.78s113.79-51.39 113.79-113.78a113.57 113.57 0 0 0 -113.78-113.79zm47.71-179.84c-24.47 25.69-75.85 35.48-154.16 30.58-11-1.22-22-1.22-33-3.67q34.88-97.26 62.4-150.48c20.8-35.48 44-51.39 66.06-47.72 41.6 8.57 71 83.2 74.64 111.34 2.41 25.69-2.52 45.26-15.94 59.95zm-506.51 259.37c19.57-20.8 58.72-31.81 116.23-31.81 12.23 0 24.47 0 37.92 1.22 11 1.23 22 1.23 33 3.67q-34.87 97.27-62.4 150.49-33 53.22-66.07 47.71c-41.59-8.56-71-83.19-74.63-111.33-2.4-25.69 2.49-45.27 15.95-59.95z" fill="currentColor"/>
  </svg>
}
