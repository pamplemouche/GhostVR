.class public Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorageDialog;
.super Lnc;
.source "PG"


# static fields
.field public static L0:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/chrome/browser/preferences/website/ClearWebsiteStorageDialog;->L0:Lorg/chromium/base/Callback;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
