.class public LgL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LyK0;


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LgL0;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 3
    iput-object p2, p0, LgL0;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()LB8;
    .locals 1

    .line 1
    iget-object v0, p0, LgL0;->b:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-virtual {v0}, LQ8;->G()LB8;

    move-result-object v0

    return-object v0
.end method
