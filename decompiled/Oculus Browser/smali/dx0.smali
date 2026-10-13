.class public final synthetic Ldx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/tab/Tab;

.field public final x:[I

.field public final y:Lhx0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;[ILhx0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldx0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    iput-object p2, p0, Ldx0;->x:[I

    iput-object p3, p0, Ldx0;->y:Lhx0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ldx0;->w:Lorg/chromium/chrome/browser/tab/Tab;

    iget-object v1, p0, Ldx0;->x:[I

    iget-object v2, p0, Ldx0;->y:Lhx0;

    .line 1
    invoke-static {v0, v1, v2}, Lix0;->a(Lorg/chromium/chrome/browser/tab/Tab;[ILhx0;)Z

    return-void
.end method
