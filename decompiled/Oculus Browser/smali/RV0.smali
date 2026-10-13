.class public final synthetic LRV0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LlT;


# static fields
.field public static final a:LlT;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LRV0;

    invoke-direct {v0}, LRV0;-><init>()V

    sput-object v0, LRV0;->a:LlT;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    invoke-static {p1}, Lorg/chromium/content/browser/ChildProcessLauncherHelperImpl;->c(I)V

    return-void
.end method
