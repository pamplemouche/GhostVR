.class public final synthetic LUe0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/infobar/AdsBlockedInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/AdsBlockedInfoBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LUe0;->a:Lorg/chromium/chrome/browser/infobar/AdsBlockedInfoBar;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LUe0;->a:Lorg/chromium/chrome/browser/infobar/AdsBlockedInfoBar;

    check-cast p1, Landroid/view/View;

    .line 1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/AdsBlockedInfoBar;->d()V

    return-void
.end method
