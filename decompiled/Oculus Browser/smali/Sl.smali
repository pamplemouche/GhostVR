.class public final LSl;
.super LBs;
.source "PG"


# instance fields
.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Ljava/lang/String;


# direct methods
.method public constructor <init>(LHm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, LSl;->r:Ljava/lang/String;

    iput-object p3, p0, LSl;->s:Ljava/lang/String;

    invoke-direct {p0, p1}, LBs;-><init>(LHm;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lpm;)V
    .locals 2

    .line 1
    check-cast p1, Lss;

    .line 2
    :try_start_0
    iget-object v0, p0, LSl;->r:Ljava/lang/String;

    iget-object v1, p0, LSl;->s:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p0}, Lss;->a(Ljava/lang/String;Ljava/lang/String;LTm;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-virtual {p0}, Lms;->g()V

    :goto_0
    return-void
.end method
