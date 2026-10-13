.class public final synthetic LTJ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LkK0;

.field public final x:J

.field public final y:Ljava/lang/String;


# direct methods
.method public constructor <init>(LkK0;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTJ0;->w:LkK0;

    iput-wide p2, p0, LTJ0;->x:J

    iput-object p4, p0, LTJ0;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LTJ0;->w:LkK0;

    iget-wide v1, p0, LTJ0;->x:J

    iget-object v3, p0, LTJ0;->y:Ljava/lang/String;

    .line 1
    invoke-virtual {v0, v1, v2, v3}, LkK0;->a(JLjava/lang/String;)V

    return-void
.end method
