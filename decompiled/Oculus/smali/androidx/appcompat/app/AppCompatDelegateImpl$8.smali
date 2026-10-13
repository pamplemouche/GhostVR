.class Landroidx/appcompat/app/AppCompatDelegateImpl$8;
.super Landroid/content/ContextWrapper;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;->updateThemedContextForNightMode(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2209
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$8;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBaseContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2212
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$8;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method
