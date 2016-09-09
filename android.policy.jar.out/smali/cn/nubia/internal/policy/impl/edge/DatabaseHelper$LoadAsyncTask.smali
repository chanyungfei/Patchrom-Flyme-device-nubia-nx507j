.class Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;
.super Landroid/os/AsyncTask;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;


# direct methods
.method private constructor <init>(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;
    .param p2, "x1"    # Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;-><init>(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 169
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # invokes: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->getAllDatabase()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$100(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)V

    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 174
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # invokes: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->updateEdgeTpState()V
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$200(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)V

    .line 175
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mChangeListener:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$300(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mChangeListener:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;
    invoke-static {v0}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$300(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$LoadAsyncTask;->this$0:Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;

    # getter for: Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->mSettingsMap:Ljava/util/Map;
    invoke-static {v2}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;->access$400(Lcn/nubia/internal/policy/impl/edge/DatabaseHelper;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/nubia/internal/policy/impl/edge/DatabaseHelper$ChangeListener;->onChange(Landroid/net/Uri;Ljava/util/Map;)V

    .line 178
    :cond_0
    return-void
.end method
