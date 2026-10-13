.class public final synthetic LKj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMm;


# instance fields
.field public final a:LNj0;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(LNj0;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKj0;->a:LNj0;

    iput-object p2, p0, LKj0;->b:Ljava/lang/String;

    iput p3, p0, LKj0;->c:I

    return-void
.end method


# virtual methods
.method public a(LLm;)V
    .locals 5

    iget-object v0, p0, LKj0;->a:LNj0;

    iget-object v1, p0, LKj0;->b:Ljava/lang/String;

    iget v2, p0, LKj0;->c:I

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->r()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send the message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CafMR"

    invoke-static {v1, p1, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "app_message"

    .line 3
    invoke-virtual {v0, v1, p1, v3, v2}, LNj0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    .line 4
    :cond_1
    throw v3
.end method
