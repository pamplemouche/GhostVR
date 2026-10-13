.class public final synthetic LuD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/send_tab_to_self/SendTabToSelfInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/send_tab_to_self/SendTabToSelfInfoBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LuD0;->a:Lorg/chromium/chrome/browser/send_tab_to_self/SendTabToSelfInfoBar;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LuD0;->a:Lorg/chromium/chrome/browser/send_tab_to_self/SendTabToSelfInfoBar;

    check-cast p1, Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1
.end method
