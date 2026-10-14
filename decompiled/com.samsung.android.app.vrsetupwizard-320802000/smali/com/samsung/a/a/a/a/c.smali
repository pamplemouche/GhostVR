.class Lcom/samsung/a/a/a/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/a/a/a/k;


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/samsung/a/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/samsung/a/a/a/a/b;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/a/a/a/a/c;->b:Lcom/samsung/a/a/a/a/b;

    iput-object p2, p0, Lcom/samsung/a/a/a/a/c;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/c;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/a/a/a/a/j/e;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
