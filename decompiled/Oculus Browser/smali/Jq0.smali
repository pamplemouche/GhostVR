.class public final synthetic LJq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/status/StatusView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LJq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    .line 1
    iget-object v1, v0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->B:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->H:Z

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->b()V

    .line 4
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->c()V

    return-void
.end method
