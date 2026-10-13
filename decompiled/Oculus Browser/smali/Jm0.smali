.class public final synthetic LJm0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJm0;->a:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LJm0;->a:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    check-cast p1, Landroid/view/View;

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    .line 1
    throw p1

    .line 2
    :cond_0
    throw p1
.end method
