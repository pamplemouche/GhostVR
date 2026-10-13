.class public final synthetic LYE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LjF0;


# direct methods
.method public constructor <init>(LjF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LYE0;->w:LjF0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, LYE0;->w:LjF0;

    .line 1
    iget-object p1, p1, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/signin/SigninView;->w:Lorg/chromium/chrome/browser/signin/SigninScrollView;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    const-string p1, "Signin_MoreButton_Shown"

    .line 4
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    return-void
.end method
