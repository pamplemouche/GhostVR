.class public Lcom/oculus/modules/UserModuleImpl;
.super Lcom/oculus/modules/codegen/UserModule;
.source "UserModuleImpl.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/oculus/modules/codegen/UserModule;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/oculus/modules/UserModuleImpl;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method protected marshallJSConstantIsPrimaryUser()Z
    .locals 3

    .prologue
    .line 17
    iget-object v1, p0, Lcom/oculus/modules/UserModuleImpl;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 18
    .local v0, "userManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v1

    return v1
.end method
