.class public abstract synthetic LD01;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(I)LF01;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    sget-object v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->m:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;-><init>(I)V

    sput-object v0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->m:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    .line 4
    :cond_0
    sget-object p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->m:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    return-object p0
.end method
