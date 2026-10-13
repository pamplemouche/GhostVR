.class public Lkp0;
.super LGM0;
.source "PG"


# instance fields
.field public final synthetic x:Z

.field public final synthetic y:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkp0;->y:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    iput-boolean p2, p0, Lkp0;->x:Z

    invoke-direct {p0}, LGM0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lkp0;->y:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lep0;->e(Z)V

    return-void
.end method

.method public b(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lkp0;->y:Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;

    iget-boolean v0, p0, Lkp0;->x:Z

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;->a(Lorg/chromium/chrome/browser/omnibox/LocationBarTablet;Z)V

    return-void
.end method
