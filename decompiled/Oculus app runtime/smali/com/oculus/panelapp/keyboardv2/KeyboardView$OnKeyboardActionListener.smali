.class public interface abstract Lcom/oculus/panelapp/keyboardv2/KeyboardView$OnKeyboardActionListener;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/keyboardv2/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnKeyboardActionListener"
.end annotation


# virtual methods
.method public abstract onHoverEnter(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
.end method

.method public abstract onHoverExit()V
.end method

.method public abstract onKey(I[I)V
.end method

.method public abstract onLongPress(Lcom/oculus/panelapp/keyboardv2/Keyboard$Key;Z)Z
.end method

.method public abstract onPress(Ljava/lang/String;ZLcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
.end method

.method public abstract onRelease(Ljava/lang/String;ZLcom/oculus/panelapp/keyboardv2/Keyboard$Key;)V
.end method
