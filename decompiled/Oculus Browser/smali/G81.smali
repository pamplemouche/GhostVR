.class public LG81;
.super Ly81;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ly81;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(LA81;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly81;->a:LA81;

    .line 2
    invoke-virtual {p0}, Ly81;->b()V

    return-void
.end method
