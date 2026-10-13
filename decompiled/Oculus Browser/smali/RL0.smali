.class public final synthetic LRL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRL0;->w:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LRL0;->w:Landroid/content/Intent;

    invoke-static {v0}, Lorg/chromium/chrome/browser/tracing/TracingNotificationService;->a(Landroid/content/Intent;)V

    return-void
.end method
