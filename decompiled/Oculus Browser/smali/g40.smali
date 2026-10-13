.class public final synthetic Lg40;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg40;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lg40;->a:Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;

    check-cast p1, Landroid/net/Uri;

    .line 1
    iget-object v0, v0, Lorg/chromium/chrome/browser/contextmenu/ContextMenuHelper;->A:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, LTD0;->b(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 3
    invoke-static {v0, v1, p1}, LTD0;->a(Landroid/app/Activity;Landroid/content/ComponentName;Landroid/net/Uri;)V

    return-void
.end method
