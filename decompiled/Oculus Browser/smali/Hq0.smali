.class public final synthetic LHq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/status/StatusView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, LHq0;->w:Lorg/chromium/chrome/browser/omnibox/status/StatusView;

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/status/StatusView;->c()V

    return-void
.end method
