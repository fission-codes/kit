import clsx from "clsx"
import React from "react"

import classes from "../Classes.json"
import { FissionLogo } from "./misc.jsx"


// GENERIC


export function Button(props) {
  return renderButton(classes.buttons.generic, props)
}


export function SmallButton(props) {
  return renderButton(classes.buttons.genericSmall, props)
}


export function ExtraSmallButton(props) {
  return renderButton(classes.buttons.genericExtraSmall, props)
}


export function TagButton(props) {
  return renderButton(classes.buttons.genericTag, props)
}


function renderButton(sizeClassName, props) {
  return React.createElement(
    props.tagName || "button",
    { ...props, className: clsx(classes.buttons.base, sizeClassName, props.className) },
    props.children
  )
}



// SPECIFIC


export function SignInButton(props) {
  return <Button>
    <span className="mr-2">
      <FissionLogo size={12} />
    </span>
    Sign in with Fission
  </Button>
}
