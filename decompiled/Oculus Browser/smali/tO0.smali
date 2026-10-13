.class public LtO0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    .line 1
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    invoke-static {}, LuO0;->b()V

    :cond_1
    return-void
.end method
