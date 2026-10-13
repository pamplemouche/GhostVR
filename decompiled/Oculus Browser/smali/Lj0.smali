.class public LLj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:I

.field public final synthetic y:LNj0;


# direct methods
.method public constructor <init>(LNj0;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LLj0;->y:LNj0;

    iput-object p2, p0, LLj0;->w:Ljava/lang/String;

    iput p3, p0, LLj0;->x:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, LLj0;->y:LNj0;

    iget-object v1, p0, LLj0;->w:Ljava/lang/String;

    iget v2, p0, LLj0;->x:I

    const-string v3, "v2_message"

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v1, v3, v4, v2}, LNj0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
