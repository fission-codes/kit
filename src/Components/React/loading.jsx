import clsx from "clsx"
import React from "react"

import classes from "../Classes.json"


export function LoadingAnimation(props) {
  const inner = number => {
    const innerClass = (() => {
      switch (number) {
        case 1: return loading.animation.inner.one
        case 2: return loading.animation.inner.two
        case 3: return loading.animation.inner.three
        default: return undefined
      }
    })

    return <div
      className={clsx(classes.loading.animation.inner.all, lineClass)}
      style={{
        borderBottomColor: "transparent",
        borderLeftColor: number === 3 ? "transparent" : "inherit",
        borderRightColor: number === 1 ? "transparent" : "inherit",
        borderTopColor: "inherit",
        borderRadius: "50%",
        left: number === 2 ? "-450%" : (number === 3 ? "-100%" : "0"),
        transform: number === 1 ? "rotate(129deg)" : (number === 3 ? "rotate(-129deg)" : undefined),
        width: number === 2 ? "1000%" : "200%",
      }}
    ></div>
  }

  const cog = number => <div
    className={classes.loading.animation.cog}
    style={{ borderColor: "inherit" }}
  >
    {inner(number)}
  </div>

  const ticker = <div
    className={classes.loading.animation.ticker}
    style={{ borderColor: "inherit", left: "45%", width: "10%" }}
  >
    {inner(2)}
  </div>

  const line = number => {
    const lineClass = (() => {
      switch (number) {
        case 1: return loading.animation.lines.one
        case 2: return loading.animation.lines.two
        case 3: return loading.animation.lines.three
        case 4: return loading.animation.lines.four
        default: return undefined
      }
    })

    return <div className={clsx(classes.loading.animation.lines.all, lineClass)}>
      {cog(1)}
      {ticker}
      {cog(3)}
    </div>
  }

  return <div
    { ...props }
    className={clsx(classes.loading.animation.container, props.className)}
    style={{ fontSize: 0, lineHeight: 0 }}
  >
    {line(1)}
    {line(2)}
    {line(3)}
    {line(4)}
  </div>
}


export function loadingIndicator(loadingText) {
  return <div className={classes.loading.indicator.container}>
    <LoadingAnimation className="h-7 w-7" />
    <div className={classes.loading.indicator.text}>
      {loadingText}
    </div>
  </div>
}


export function loadingScreen(props) {
  return <div {...props} className={clsx(classes.loading.screen.container, props.className)}>
    <div className={classes.loading.screen.nodes}>
      {props.children}
    </div>
    <LoadingAnimation className="h-7 w-7" />
  </div>
}
