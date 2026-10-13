.class public final synthetic LKF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LWc1;


# instance fields
.field public final w:LYU0;


# direct methods
.method public constructor <init>(LYU0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKF0;->w:LYU0;

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, LKF0;->w:LYU0;

    .line 1
    iget p2, p1, LYU0;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, LYU0;->a:I

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p1, LYU0;->b:LMU0;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, LMU0;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
