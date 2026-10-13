.class public final synthetic LKZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LLZ;


# direct methods
.method public constructor <init>(LLZ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKZ;->w:LLZ;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LKZ;->w:LLZ;

    .line 1
    iget-wide v0, v0, LLZ;->a:J

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v1, v2, v2}, LJ/N;->MK6D9ZZF(J[[BLjava/lang/Object;)V

    return-void
.end method
