.class public Ljp0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljp0;->w:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljp0;->w:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    .line 2
    iget-object v0, v0, Lep0;->H:Lk00;

    const/16 v1, 0x10

    .line 3
    iget-object v0, v0, Lk00;->a:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method
