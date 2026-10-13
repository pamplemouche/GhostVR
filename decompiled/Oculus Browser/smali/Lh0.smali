.class public LLh0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lea1;


# instance fields
.field public final a:LKh0;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LKh0;

    invoke-direct {v0, p1}, LKh0;-><init>(Lorg/chromium/content_public/browser/RenderFrameHost;)V

    iput-object v0, p0, LLh0;->a:LKh0;

    return-void
.end method


# virtual methods
.method public a()LE61;
    .locals 4

    .line 1
    new-instance v0, LPh0;

    iget-object v1, p0, LLh0;->a:LKh0;

    .line 2
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 3
    invoke-static {}, LSh0;->a()LSh0;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LPh0;-><init>(LOh0;Landroid/content/Context;LSh0;)V

    return-object v0
.end method
