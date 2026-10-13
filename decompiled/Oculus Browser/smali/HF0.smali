.class public final synthetic LHF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/signin/SigninScrollView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/signin/SigninScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LHF0;->w:Lorg/chromium/chrome/browser/signin/SigninScrollView;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, LHF0;->w:Lorg/chromium/chrome/browser/signin/SigninScrollView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninScrollView;->a()V

    return-void
.end method
