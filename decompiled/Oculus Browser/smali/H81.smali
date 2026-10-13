.class public LH81;
.super Ly81;
.source "PG"

# interfaces
.implements LlT;


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly81;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LH81;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v0, p0}, LWT;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LH81;->b:Z

    return-void
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ly81;->b()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Ly81;->a:LA81;

    invoke-virtual {p1}, LA81;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(LA81;)V
    .locals 0

    .line 6
    iput-object p1, p0, Ly81;->a:LA81;

    .line 7
    sget-object p1, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {p1, p0}, LWT;->a(Ljava/lang/Object;)Z

    .line 8
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result p1

    .line 9
    invoke-virtual {p0, p1}, LH81;->a(I)V

    return-void
.end method
