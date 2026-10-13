.class public interface abstract Lcom/oculus/browser/PanelApp$Natives;
.super Ljava/lang/Object;
.source "PG"


# virtual methods
.method public abstract getDefaultSearchUri(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public abstract init(Lcom/oculus/browser/PanelApp;Lcom/oculus/browser/PanelSurface;Lcom/oculus/browser/PanelSurface;Lcom/oculus/browser/ShellEnvironment;I)J
.end method

.method public abstract onLoadProgressChanged(JD)V
.end method

.method public abstract onPhysicalBackingSizeChanged(JLorg/chromium/content_public/browser/WebContents;II)V
.end method

.method public abstract reportIntentLaunchTelemetry(JLjava/lang/String;I)V
.end method

.method public abstract requestExit(J)V
.end method

.method public abstract setAccessToken(JLjava/lang/String;)V
.end method

.method public abstract setNavUiContents(JLorg/chromium/content_public/browser/WebContents;Lcom/oculus/browser/OculusUiGestureTarget;Ljava/lang/String;Z)V
.end method

.method public abstract setTabList(J[Lorg/chromium/chrome/browser/tab/Tab;I)V
.end method

.method public abstract setTransientProperties(J[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract setWebContents(JLorg/chromium/content_public/browser/WebContents;Lcom/oculus/browser/OculusUiGestureTarget;Z)V
.end method

.method public abstract setWebVRRequestedMode(JZ)V
.end method

.method public abstract suspendAllMedia(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract toggleNewPanelsAllowed(JZ)V
.end method
