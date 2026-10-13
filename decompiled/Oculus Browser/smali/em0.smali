.class public final synthetic Lem0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lvf1;


# instance fields
.field public final a:LnU;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LnU;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lem0;->a:LnU;

    iput-object p2, p0, Lem0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lem0;->a:LnU;

    iget-object v0, p0, Lem0;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 1
    :goto_0
    invoke-virtual {p2, v0}, LnU;->a(Ljava/lang/Object;)V

    return-void
.end method
