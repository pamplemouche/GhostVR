.class Lcom/samsung/a/a/a/a/g/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/a/a/a/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/a/a/a/a/a<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/a/a/a/a/g/c/c;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/g/c/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/g/c/d;->b:Lcom/samsung/a/a/a/a/g/c/c;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/g/c/d;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/a/a/a/a/g/c/d;->a(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Void;
    .locals 1

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/c/d;->b:Lcom/samsung/a/a/a/a/g/c/c;

    invoke-static {p1}, Lcom/samsung/a/a/a/a/g/c/c;->a(Lcom/samsung/a/a/a/a/g/c/c;)V

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/c/d;->b:Lcom/samsung/a/a/a/a/g/c/c;

    invoke-static {p1}, Lcom/samsung/a/a/a/a/g/c/c;->b(Lcom/samsung/a/a/a/a/g/c/c;)V

    iget-object p1, p0, Lcom/samsung/a/a/a/a/g/c/d;->b:Lcom/samsung/a/a/a/a/g/c/c;

    iget-object v0, p0, Lcom/samsung/a/a/a/a/g/c/d;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/a/a/a/a/g/c/c;->a(Lcom/samsung/a/a/a/a/g/c/c;Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method
