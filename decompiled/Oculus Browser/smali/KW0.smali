.class public LKW0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:LsV;

.field public b:LLV;

.field public c:Z

.field public d:LKV;


# direct methods
.method public constructor <init>(Landroid/content/Context;LsV;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, LKW0;->a:LsV;

    .line 3
    new-instance p2, LIW0;

    invoke-direct {p2, p0}, LIW0;-><init>(LKW0;)V

    .line 4
    iget-object v0, p0, LKW0;->a:LsV;

    invoke-virtual {v0, p1, p3, p2}, LsV;->a(Landroid/content/Context;Landroid/os/Bundle;LKV;)LLV;

    move-result-object p1

    iput-object p1, p0, LKW0;->b:LLV;

    return-void
.end method

.method public static synthetic a(LKW0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, LKW0;->b:LLV;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, LKW0;->c:Z

    return-void
.end method
