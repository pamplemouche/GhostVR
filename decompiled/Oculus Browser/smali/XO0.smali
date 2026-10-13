.class public LXO0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    :cond_0
    invoke-static {}, LYO0;->a()V

    .line 2
    sget-object p1, LYO0;->a:LlT;

    .line 3
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->h:LWT;

    invoke-virtual {v0, p1}, LWT;->b(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 4
    sput-object p1, LYO0;->a:LlT;

    :cond_1
    return-void
.end method
