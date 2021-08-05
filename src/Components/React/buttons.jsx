import clsx from "clsx"
import React from "react"

import classes from "../Classes.json"
import { FissionLogo } from "./misc.jsx"


// GENERIC


export function Button(props) {
  return <button { ...props } className={clsx(classes.buttons.base, classes.buttons.generic, props.className)}></button>
}


export function SmallButton(props) {
  return <button { ...props } className={clsx(classes.buttons.base, classes.buttons.genericSmall, props.className)}></button>
}


export function ExtraSmallButton(props) {
  return <button { ...props } className={clsx(classes.buttons.base, classes.buttons.genericExtraSmall, props.className)}></button>
}


export function TagButton(props) {
  return <button { ...props } className={clsx(classes.buttons.base, classes.buttons.genericTag, props.className)}></button>
}



// SPECIFIC


export function SignInButton(props) {
  return <button { ...props } className={clsx(classes.buttons.base, classes.buttons.signIn, props.className)}>
    <span className="mr-2">
      <FissionLogo size={12} />
    </span>
    Sign in with Fission
  </button>
}
