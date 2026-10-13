.class public LdM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;)V
    .locals 0

    .line 1
    iput-object p1, p0, LdM0;->w:Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, LdM0;->w:Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;

    .line 2
    iget-object v0, p1, Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;->x:LbI0;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p1, Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;->w:LpI0;

    const/4 v0, 0x0

    .line 4
    check-cast p1, LrI0;

    invoke-virtual {p1, v0}, LrI0;->b(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->d()V

    .line 5
    iget-object p1, p0, LdM0;->w:Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;

    .line 6
    iget-object p1, p1, Lorg/chromium/chrome/browser/ui/tablet/emptybackground/EmptyBackgroundViewTablet;->x:LbI0;

    .line 7
    invoke-virtual {p1}, LbI0;->launchNTP()V

    return-void
.end method
