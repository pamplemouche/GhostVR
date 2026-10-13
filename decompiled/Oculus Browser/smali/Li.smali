.class public LLi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Landroid/content/Context;


# direct methods
.method public constructor <init>(LSi;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, LLi;->w:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LLi;->w:Landroid/content/Context;

    invoke-static {v0}, LSi;->a(Landroid/content/Context;)V

    return-void
.end method
