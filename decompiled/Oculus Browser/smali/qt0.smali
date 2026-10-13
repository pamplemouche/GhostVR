.class public final synthetic Lqt0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LkW;


# direct methods
.method public constructor <init>(LkW;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqt0;->w:LkW;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lqt0;->w:LkW;

    invoke-static {v0}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->a(LkW;)V

    return-void
.end method
