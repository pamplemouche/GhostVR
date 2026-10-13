.class public final synthetic Lu20;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final w:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu20;

    invoke-direct {v0}, Lu20;-><init>()V

    sput-object v0, Lu20;->w:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "TrustedWebActivity.OpenedSettingsViaManageSpace"

    .line 1
    invoke-static {v0}, LhV;->a(Ljava/lang/String;)V

    return-void
.end method
