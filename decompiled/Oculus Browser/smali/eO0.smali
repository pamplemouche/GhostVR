.class public final synthetic LeO0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LjO0;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(LjO0;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LeO0;->a:LjO0;

    iput-wide p2, p0, LeO0;->b:J

    iput-wide p4, p0, LeO0;->c:J

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, LeO0;->a:LjO0;

    iget-wide v1, p0, LeO0;->b:J

    iget-wide v3, p0, LeO0;->c:J

    check-cast p1, Ljava/lang/Exception;

    .line 1
    iget-object p1, v0, LjO0;->a:LBN0;

    invoke-virtual {p1, v1, v2, v3, v4}, LBN0;->a(JJ)LnU;

    move-result-object p1

    sget-object v0, LhO0;->a:Lorg/chromium/base/Callback;

    .line 2
    invoke-virtual {p1, v0}, LnU;->a(Lorg/chromium/base/Callback;)V

    return-void
.end method
