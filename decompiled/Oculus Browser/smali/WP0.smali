.class public LWP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lea1;


# instance fields
.field public final a:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LWP0;->a:Lorg/chromium/content_public/browser/WebContents;

    return-void
.end method


# virtual methods
.method public a()LE61;
    .locals 2

    .line 1
    new-instance v0, LVP0;

    iget-object v1, p0, LWP0;->a:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {v0, v1}, LVP0;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object v0
.end method
