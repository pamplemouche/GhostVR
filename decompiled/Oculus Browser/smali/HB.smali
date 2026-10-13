.class public final LHB;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LKB;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LKB;

    invoke-direct {v0}, LKB;-><init>()V

    iput-object v0, p0, LHB;->a:LKB;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LHB;->a:LKB;

    invoke-virtual {v0, p1}, LKB;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
