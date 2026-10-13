.class public final synthetic Lwo0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LvB;


# instance fields
.field public final a:Lxo0;


# direct methods
.method public constructor <init>(Lxo0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwo0;->a:Lxo0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    iget-object p1, p0, Lwo0;->a:Lxo0;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lxo0;->e:LGA;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lxo0;->f:Ljava/lang/Integer;

    .line 3
    iput-object v1, p1, Lxo0;->g:Ljava/lang/Integer;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PlayInline"

    const-string v2, "pullCurrentState() failed."

    .line 4
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 5
    invoke-static {v0}, Lxo0;->a(I)V

    .line 6
    invoke-virtual {p1}, Lxo0;->a()V

    return-void
.end method
