.class public final synthetic LNA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final w:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LNA0;

    invoke-direct {v0}, LNA0;-><init>()V

    sput-object v0, LNA0;->w:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferencesBasic;->V()V

    return-void
.end method
